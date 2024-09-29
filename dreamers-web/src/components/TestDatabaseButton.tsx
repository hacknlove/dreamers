"use client";

import { getData } from "@/app/actions";

export default function TestDatabaseButton() {
  async function onClickHandler() {
    const response = await getData();
    alert(JSON.stringify(response));
  }

  return <button onClick={onClickHandler}>Test Database</button>;
}
