import { BrowserRouter, Routes, Route } from "react-router-dom";
import Profile from "./pages/Profile";
import MyScores from "./pages/MyScores";
import MyScoresYearESC from "./pages/MyScoresYearESC";
import MyScoresYearPZE from "./pages/MyScoresYearPZE";
import Home from "./pages/Home";
import Navbar from "./components/Navbar";

export default function App() {
  return (
    <BrowserRouter>
      <Navbar />
      <Routes>
        <Route path="/" element={<Home />}/>
        <Route path="/profile" element={<Profile />} />
        <Route path="/my-scores" element={<MyScores />} />
        <Route path="/my-scores/esc/:year" element={<MyScoresYearESC />} />
        <Route path="/my-scores/pze/:year" element={<MyScoresYearPZE />} />
      </Routes>
    </BrowserRouter>
  );
}