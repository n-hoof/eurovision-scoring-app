import { BrowserRouter, Routes, Route } from "react-router-dom";
import Home from "./pages/Home";
import Profile from "./pages/Profile";
import MyScores from "./pages/MyScores";
import MyScoresYearESC from "./pages/MyScoresYearESC";

export default function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/profile" element={<Profile />} />
        <Route path="/myscores" element={<MyScores />} />
        <Route path="/myscores/:year" element={<MyScoresYearESC />} />
      </Routes>
    </BrowserRouter>
  );
}