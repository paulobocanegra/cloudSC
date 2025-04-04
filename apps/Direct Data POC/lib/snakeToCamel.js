function snakeToCamel(str) {
  return str.replace(/_([a-z])/g, (_, letter) => letter.toUpperCase());
}

const transformKeysToCamelCase = (obj) => {
  return Object.keys(obj).reduce((acc, key) => {
    acc[snakeToCamel(key)] = obj[key];
    return acc;
  }, {});
};

// Example usage on Retool's form2.data
const newObject = transformKeysToCamelCase(createTableForm.data);
return newObject;