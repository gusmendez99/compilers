import React, { useState } from "react";

import Editor from "@monaco-editor/react";

const CodeEditorWindow = ({ onChange, language, code = "", theme }) => {

  const handleEditorChange = (value) => {
    onChange && onChange("code", value);
  };

  return (
    <div className="overlay rounded-md overflow-hidden w-full h-full shadow-4xl">
      <Editor
        height="40vh"
        width={`100%`}
        language={language || "java"}
        value={code}
        theme={theme}
        defaultValue={code}
        onChange={handleEditorChange}
      />
    </div>
  );
};
export default CodeEditorWindow;
